import { request } from "@utils";

const API_PATH = "/internship/enterprise";

export interface EnterpriseRecord {
  id: number;
  name: string;
  credit_code: string | null;
  address: string | null;
  contact_name: string | null;
  contact_phone: string | null;
  created_time: string;
  updated_time: string;
  base_count: number;
}

export interface EnterprisePageQuery {
  page: number;
  page_size: number;
  name?: string;
  credit_code?: string;
}

export interface EnterprisePageData {
  total: number;
  page: number;
  page_size: number;
  records: EnterpriseRecord[];
}

export interface EnterpriseBaseRecord {
  id: number;
  name: string;
  location_type: string;
  address: string | null;
  established_year: string | null;
}

const EnterpriseAPI = {
  page(query: EnterprisePageQuery) {
    return request<ApiResponse<EnterprisePageData>>({
      url: `${API_PATH}/page`,
      method: "get",
      params: query,
    });
  },

  detail(id: number) {
    return request<ApiResponse<EnterpriseRecord>>({
      url: `${API_PATH}/detail/${id}`,
      method: "get",
    });
  },

  bases(id: number) {
    return request<ApiResponse<EnterpriseBaseRecord[]>>({
      url: `${API_PATH}/${id}/bases`,
      method: "get",
    });
  },
};

export default EnterpriseAPI;
