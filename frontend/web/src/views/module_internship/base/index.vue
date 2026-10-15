<script setup lang="ts">
import { computed, onMounted, ref } from 'vue'
import FaDialog from '@/components/modal/fa-dialog/index.vue'
import BaseAPI, {
  type BaseRecord,
  type BasePageQuery,
} from '@/api/module_internship/base'

const loading = ref(false)
const detailLoading = ref(false)
const errorMessage = ref('')
const detailError = ref('')

const bases = ref<BaseRecord[]>([])
const total = ref(0)

const keyword = ref('')
const locationFilter = ref('')
const currentPage = ref(1)
const pageSize = 20

const selectedBase = ref<BaseRecord | null>(null)
const detailVisible = ref(false)

const totalPages = computed(() =>
  Math.max(1, Math.ceil(total.value / pageSize)),
)

function display(value: unknown) {
  if (value === null || value === undefined || value === '') {
    return '待完善'
  }

  return String(value)
}

function displayArray(value: string[] | null | undefined) {
  return value?.length ? value.join('、') : '待完善'
}

async function loadBases() {
  loading.value = true
  errorMessage.value = ''

  try {
    const query: BasePageQuery = {
      page: currentPage.value,
      page_size: pageSize,
    }

    if (keyword.value.trim()) {
      query.name = keyword.value.trim()
    }

    if (locationFilter.value) {
      query.location_type = locationFilter.value
    }

    const response = await BaseAPI.page(query)
    const result = response.data

    if (!result.success || !result.data) {
      throw new Error(result.msg || '查询基地失败')
    }

    bases.value = result.data.records ?? []
    total.value = result.data.total ?? 0
  }
  catch (error) {
    bases.value = []
    total.value = 0
    errorMessage.value =
      error instanceof Error ? error.message : '基地数据加载失败'
  }
  finally {
    loading.value = false
  }
}

function search() {
  currentPage.value = 1
  loadBases()
}

function resetSearch() {
  keyword.value = ''
  locationFilter.value = ''
  currentPage.value = 1
  loadBases()
}

function changePage(page: number) {
  currentPage.value = Math.min(Math.max(1, page), totalPages.value)
  loadBases()
}

async function showDetail(item: BaseRecord) {
  selectedBase.value = null
  detailError.value = ''
  detailVisible.value = true
  detailLoading.value = true

  try {
    const response = await BaseAPI.detail(item.id)
    const result = response.data

    if (!result.success || !result.data) {
      throw new Error(result.msg || '查询基地详情失败')
    }

    selectedBase.value = result.data
  }
  catch (error) {
    detailError.value =
      error instanceof Error ? error.message : '基地详情加载失败'
  }
  finally {
    detailLoading.value = false
  }
}

function closeDetail() {
  detailVisible.value = false
}

onMounted(loadBases)
</script>

<template>
  <div class="base-page">
    <div class="page-heading">
      <div>
        <h2>产教融合基地管理</h2>
        <p>本科校内外实习、实践、实训基地信息</p>
      </div>
    </div>

    <div class="content-card">
      <div class="section-title">基地信息查询</div>

      <div class="search-bar">
        <ElInput
          v-model="keyword"
          placeholder="请输入基地名称"
          clearable
          style="width: 240px"
          @keyup.enter="search"
        />

        <ElSelect
          v-model="locationFilter"
          placeholder="全部地点"
          style="width: 150px"
          @change="search"
        >
          <ElOption label="全部地点" value="" />
          <ElOption label="校内" value="校内" />
          <ElOption label="校外" value="校外" />
        </ElSelect>

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
        <div class="section-title">基地信息列表</div>
        <span>共 {{ total }} 条记录</span>
      </div>

      <div v-if="errorMessage" class="error-message">
        数据加载失败：{{ errorMessage }}
        <ElButton @click="loadBases">重新加载</ElButton>
      </div>

      <template v-else>
        <ElTable
          v-loading="loading"
          :data="bases"
          border
          stripe
          table-layout="auto"
          style="width: 100%"
          empty-text="暂无符合条件的基地数据"
        >
          <ElTableColumn
            prop="name"
            label="基地名称"
            min-width="240"
            show-overflow-tooltip
          />

          <ElTableColumn label="所属学院" min-width="130">
            <template #default="{ row }">
              {{ display(row.college_name) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="地点" min-width="85">
            <template #default="{ row }">
              {{ display(row.location_type) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="建立年份" min-width="105">
            <template #default="{ row }">
              {{ display(row.established_year) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="专业代码" min-width="130">
            <template #default="{ row }">
              {{ displayArray(row.major_codes) }}
            </template>
          </ElTableColumn>

          <ElTableColumn label="面向专业" min-width="150">
            <template #default="{ row }">
              {{ displayArray(row.major_names) }}
            </template>
          </ElTableColumn>

          <ElTableColumn
            label="学年接纳人次"
            min-width="125"
            align="center"
          >
            <template #default="{ row }">
              {{ display(row.annual_student_visits) }}
            </template>
          </ElTableColumn>

          <ElTableColumn
            label="操作"
            width="105"
            fixed="right"
            align="center"
          >
            <template #default="{ row }">
              <ElButton link type="primary" @click="showDetail(row as BaseRecord)">
                查看详情
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
      title="基地详细信息"
      width="760px"
      form-mode="detail"
      confirm-text="关闭"
      @close="closeDetail"
    >
      <div v-loading="detailLoading" class="detail-body">
        <div v-if="detailError" class="error-message">
          {{ detailError }}
        </div>

        <template v-else-if="selectedBase">
          <div class="detail-section-title">基本信息</div>

          <ElDescriptions :column="2" border>
            <ElDescriptionsItem label="基地名称" :span="2">
              {{ display(selectedBase.name) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="所属学院">
              {{ display(selectedBase.college_name) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="地点">
              {{ display(selectedBase.location_type) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="建立年份">
              {{ display(selectedBase.established_year) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="学年接纳人次">
              {{ display(selectedBase.annual_student_visits) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="关联企业" :span="2">
              {{ display(selectedBase.enterprise_name) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="基地地址" :span="2">
              {{ display(selectedBase.address) }}
            </ElDescriptionsItem>
          </ElDescriptions>

          <div class="detail-section-title second-section">
            面向专业
          </div>

          <ElDescriptions :column="1" border>
            <ElDescriptionsItem label="专业代码">
              {{ displayArray(selectedBase.major_codes) }}
            </ElDescriptionsItem>

            <ElDescriptionsItem label="专业名称">
              {{ displayArray(selectedBase.major_names) }}
            </ElDescriptionsItem>
          </ElDescriptions>
        </template>
      </div>
    </FaDialog>
  </div>
</template>
<style scoped>
.base-page {
  padding: 20px;
  color: var(--el-text-color-primary);
}

.page-heading,
.table-heading,
.search-bar,
.pagination {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
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
.source-label,
.table-heading span {
  margin: 0;
  font-size: 12px;
  color: var(--el-text-color-secondary);
}

.content-card {
  background: var(--el-bg-color);
  border: 1px solid var(--el-border-color-light);
  border-radius: 8px;
}

.content-card {
  padding: 18px;
  margin-bottom: 18px;
}

.section-title {
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 15px;
}

.search-bar {
  justify-content: flex-start;
  flex-wrap: wrap;
}

.table-heading {
  margin-bottom: 15px;
}

.table-heading .section-title {
  margin-bottom: 0;
}

.pagination {
  margin-top: 18px;
  font-size: 13px;
}

.pending-text {
  color: var(--el-text-color-placeholder);
}

.error-message {
  padding: 24px;
  color: var(--el-color-danger);
  text-align: center;
}

.detail-body {
  padding: 4px 0 12px;
}

.detail-section-title {
  padding-left: 10px;
  margin-bottom: 16px;
  border-left: 3px solid var(--el-color-primary);
  font-size: 15px;
  font-weight: 600;
}

.second-section {
  margin-top: 26px;
}

@media (max-width: 700px) {
  .page-heading {
    align-items: flex-start;
    flex-direction: column;
  }
}
</style>




