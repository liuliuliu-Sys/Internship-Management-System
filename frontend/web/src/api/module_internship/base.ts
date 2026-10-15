import { request } from "@utils";

const API_PATH = "/internship/base";

export interface BaseRecord {
  id: number;
  name: string;
  enterprise_id: number;
  enterprise_name: string | null;
  college_id: number | null;
  college_name: string | null;
  location_type: string;
  address: string | null;
  established_year: string | null;
  major_codes: string[];
  major_names: string[];
  annual_student_visits: number | null;
}

export interface BasePageQuery {
  page: number;
  page_size: number;
  name?: string;
  location_type?: string;
  college_id?: number;
}

export interface BasePageData {
  total: number;
  page: number;
  page_size: number;
  records: BaseRecord[];
}

const BaseAPI = {
  page(query: BasePageQuery) {
    return request<ApiResponse<BasePageData>>({
      url: `${API_PATH}/page`,
      method: "get",
      params: query,
    });
  },

  detail(id: number) {
    return request<ApiResponse<BaseRecord>>({
      url: `${API_PATH}/detail/${id}`,
      method: "get",
    });
  },
};

export default BaseAPI;
