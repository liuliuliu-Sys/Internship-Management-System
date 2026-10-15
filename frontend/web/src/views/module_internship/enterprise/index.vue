<script setup lang="ts">
import { computed, onMounted, ref } from 'vue'
import FaDialog from '@/components/modal/fa-dialog/index.vue'
import EnterpriseAPI, {
  type EnterpriseRecord,
  type EnterpriseBaseRecord,
  type EnterprisePageQuery,
} from '@/api/module_internship/enterprise'

const loading = ref(false)
const errorMessage = ref('')
const enterprises = ref<EnterpriseRecord[]>([])
const total = ref(0)

const nameKeyword = ref('')
const creditCodeKeyword = ref('')
const currentPage = ref(1)
const pageSize = 20

const detailVisible = ref(false)
const detailLoading = ref(false)
const detailError = ref('')
const selectedEnterprise = ref<EnterpriseRecord | null>(null)

const basesVisible = ref(false)
const basesLoading = ref(false)
const basesError = ref('')
const relatedBases = ref<EnterpriseBaseRecord[]>([])
const selectedEnterpriseName = ref('')

const totalPages = computed(() =>
  Math.max(1, Math.ceil(total.value / pageSize)),
)

function display(value: unknown) {
  if (value === null || value === undefined || value === '') {
    return '待完善'
  }
  return String(value)
}

function errorText(error: unknown, fallback: string) {
  return error instanceof Error ? error.message : fallback
}

async function loadEnterprises() {
  loading.value = true
  errorMessage.value = ''

  try {
    const query: EnterprisePageQuery = {
      page: currentPage.value,
      page_size: pageSize,
    }

    if (nameKeyword.value.trim()) {
      query.name = nameKeyword.value.trim()
    }

    if (creditCodeKeyword.value.trim()) {
      query.credit_code = creditCodeKeyword.value.trim()
    }

    const response = await EnterpriseAPI.page(query)
    const result = response.data

    if (!result.success || !result.data) {
      throw new Error(result.msg || '查询企业列表失败')
    }

    enterprises.value = result.data.records ?? []
    total.value = result.data.total ?? 0
  }
  catch (error) {
    enterprises.value = []
    total.value = 0
    errorMessage.value = errorText(error, '企业数据加载失败')
  }
  finally {
    loading.value = false
  }
}

function search() {
  currentPage.value = 1
  loadEnterprises()
}

function resetSearch() {
  nameKeyword.value = ''
  creditCodeKeyword.value = ''
  currentPage.value = 1
  loadEnterprises()
}

function changePage(page: number) {
  currentPage.value = Math.min(Math.max(1, page), totalPages.value)
  loadEnterprises()
}

async function showDetail(item: EnterpriseRecord) {
  detailVisible.value = true
  detailLoading.value = true
  detailError.value = ''
  selectedEnterprise.value = null

  try {
    const response = await EnterpriseAPI.detail(item.id)
    const result = response.data

    if (!result.success || !result.data) {
      throw new Error(result.msg || '查询企业详情失败')
    }

    selectedEnterprise.value = result.data
  }
  catch (error) {
    detailError.value = errorText(error, '企业详情加载失败')
  }
  finally {
    detailLoading.value = false
  }
}

async function showBases(item: EnterpriseRecord) {
  basesVisible.value = true
  basesLoading.value = true
  basesError.value = ''
  relatedBases.value = []
  selectedEnterpriseName.value = item.name

  try {
    const response = await EnterpriseAPI.bases(item.id)
    const result = response.data

    if (!result.success || !result.data) {
      throw new Error(result.msg || '查询关联基地失败')
    }

    relatedBases.value = result.data
  }
  catch (error) {
    basesError.value = errorText(error, '关联基地加载失败')
  }
  finally {
    basesLoading.value = false
  }
}

onMounted(loadEnterprises)
</script>

<template>
  <div class="enterprise-page">
    <div class="page-heading">
      <h2>合作企业管理</h2>
      <p>全校共享合作企业信息，支持查询企业资料及关联实习基地</p>
    </div>

    <div class="content-card">
      <div class="section-title">企业信息查询</div>

      <div class="search-bar">
        <ElInput
          v-model="nameKeyword"
          placeholder="请输入企业名称"
          clearable
          style="width: 240px"
          @keyup.enter="search"
        />

        <ElInput
          v-model="creditCodeKeyword"
          placeholder="请输入统一社会信用代码"
          clearable
          style="width: 240px"
          @keyup.enter="search"
        />

        <ElButton type="primary" :loading="loading" @click="search">
          查询
        </ElButton>

        <ElButton @click="resetSearch">
          重置
        </ElButton>
      </div>
    </div>

    <div class="content-card">
      <div class="table-heading">
        <div class="section-title">合作企业列表</div>
        <span>共 {{ total }} 条记录</span>
      </div>

      <div v-if="errorMessage" class="error-message">
        <p>数据加载失败：{{ errorMessage }}</p>
        <ElButton @click="loadEnterprises">重新加载</ElButton>
      </div>

      <template v-else>
        <ElTable
          v-loading="loading"
          :data="enterprises"
          border
          stripe
          table-layout="auto"
          style="width: 100%"
          empty-text="暂无符合条件的企业数据"
        >
          <ElTableColumn
            prop="name"
            label="企业名称"
            min-width="240"
            show-overflow-tooltip
          />

          <ElTableColumn label="统一社会信用代码" min-width="185">
            <template #default="{ row }">
              {{ display(row.credit_code) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="企业地址" min-width="230" show-overflow-tooltip>
            <template #default="{ row }">
              {{ display(row.address) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="联系人" min-width="110">
            <template #default="{ row }">
              {{ display(row.contact_name) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="联系电话" min-width="145">
            <template #default="{ row }">
              {{ display(row.contact_phone) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="关联基地数" min-width="110" align="center">
            <template #default="{ row }">
              {{ row.base_count ?? 0 }}
            </template>
          </ElTableColumn>

          <ElTableColumn
            label="操作"
            width="175"
            fixed="right"
            align="center"
          >
            <template #default="{ row }">
              <ElButton link type="primary" @click="showDetail(row as EnterpriseRecord)">
                查看详情
              </ElButton>

              <ElButton link type="primary" @click="showBases(row as EnterpriseRecord)">
                关联基地
              </ElButton>
            </template>
          </ElTableColumn>
        </ElTable>

        <div class="pagination">
          <span>共 {{ total }} 条</span>

          <ElPagination
            :current-page="currentPage"
            :page-size="pageSize"
            :total="total"
            layout="prev, pager, next"
            background
            @current-change="changePage"
          />
        </div>
      </template>
    </div>

    <FaDialog
      v-model="detailVisible"
      title="合作企业详细信息"
      width="760px"
      form-mode="detail"
      confirm-text="关闭"
    >
      <div v-loading="detailLoading" class="detail-body">
        <div v-if="detailError" class="error-message">
          {{ detailError }}
        </div>

        <template v-else-if="selectedEnterprise">
          <div class="detail-section-title">基本信息</div>

          <ElDescriptions :column="2" border>
            <ElDescriptionsItem label="企业名称" :span="2">
              {{ display(selectedEnterprise.name) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="统一社会信用代码" :span="2">
              {{ display(selectedEnterprise.credit_code) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="企业地址" :span="2">
              {{ display(selectedEnterprise.address) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="联系人">
              {{ display(selectedEnterprise.contact_name) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="联系电话">
              {{ display(selectedEnterprise.contact_phone) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="关联基地数量">
              {{ selectedEnterprise.base_count ?? 0 }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="创建时间">
              {{ display(selectedEnterprise.created_time) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="更新时间" :span="2">
              {{ display(selectedEnterprise.updated_time) }}
            </ElDescriptionsItem>
          </ElDescriptions>
        </template>
      </div>
    </FaDialog>

    <FaDialog
      v-model="basesVisible"
      title="企业关联基地"
      width="850px"
      form-mode="detail"
      confirm-text="关闭"
    >
      <div v-loading="basesLoading" class="detail-body">
        <div class="related-heading">
          所属企业：{{ selectedEnterpriseName }}
        </div>

        <div v-if="basesError" class="error-message">
          {{ basesError }}
        </div>

        <ElTable
          v-else
          :data="relatedBases"
          border
          stripe
          style="width: 100%"
          empty-text="该企业暂无关联基地"
        >
          <ElTableColumn
            prop="name"
            label="基地名称"
            min-width="220"
            show-overflow-tooltip
          />

          <ElTableColumn label="地点" width="90">
            <template #default="{ row }">
              {{ display(row.location_type) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="建立年份" width="110">
            <template #default="{ row }">
              {{ display(row.established_year) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="基地地址" min-width="230" show-overflow-tooltip>
            <template #default="{ row }">
              {{ display(row.address) }}
            </template>
          </ElTableColumn>
        </ElTable>
      </div>
    </FaDialog>
  </div>
</template>

<style scoped>
.enterprise-page {
  padding: 20px;
  color: var(--el-text-color-primary);
}

.page-heading {
  margin-bottom: 20px;
}

.page-heading h2 {
  margin: 0 0 8px;
  font-size: 21px;
  font-weight: 600;
}

.page-heading p,
.table-heading span {
  margin: 0;
  font-size: 12px;
  color: var(--el-text-color-secondary);
}

.content-card {
  padding: 18px;
  margin-bottom: 18px;
  background: var(--el-bg-color);
  border: 1px solid var(--el-border-color-light);
  border-radius: 8px;
}

.section-title {
  margin-bottom: 15px;
  font-size: 16px;
  font-weight: 600;
}

.search-bar,
.table-heading,
.pagination {
  display: flex;
  align-items: center;
  gap: 12px;
}

.search-bar {
  flex-wrap: wrap;
}

.table-heading,
.pagination {
  justify-content: space-between;
}

.table-heading .section-title {
  margin-bottom: 0;
}

.pagination {
  margin-top: 18px;
  font-size: 13px;
}

.error-message {
  padding: 24px;
  color: var(--el-color-danger);
  text-align: center;
}

.detail-body {
  padding: 4px 0 12px;
  min-height: 70px;
}

.detail-section-title {
  padding-left: 10px;
  margin-bottom: 16px;
  border-left: 3px solid var(--el-color-primary);
  font-size: 15px;
  font-weight: 600;
}

.related-heading {
  margin-bottom: 16px;
  font-size: 13px;
  color: var(--el-text-color-secondary);
}
</style>

