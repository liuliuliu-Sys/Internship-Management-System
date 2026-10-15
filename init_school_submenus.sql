SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO sys_menu
(
 name,type,`order`,permission,icon,route_name,route_path,
 component_path,redirect,hidden,keep_alive,always_show,
 title,params,affix,link,is_iframe,is_hide_tab,active_path,
 show_badge,show_text_badge,scope,status,description,parent_id,
 uuid,is_deleted,created_time,updated_time
)
SELECT
 x.name,2,x.sort_order,NULL,NULL,x.route_name,x.route_path,
 x.component_path,NULL,1,1,0,
 x.name,NULL,0,NULL,0,0,NULL,
 0,NULL,'web',0,'业务页面待开发',x.parent_id,
 UUID(),0,NOW(),NOW()
FROM
(
 SELECT 159 parent_id,2 sort_order,'合作企业管理' name,'InternshipEnterprise' route_name,'enterprise' route_path,'module_internship/enterprise/index' component_path
 UNION ALL SELECT 159,3,'合作协议管理','InternshipAgreement','agreement','module_internship/agreement/index'
 UNION ALL SELECT 159,4,'年度接纳数据','InternshipReception','reception','module_internship/reception/index'

 UNION ALL SELECT 161,1,'教学班管理','InternshipTeachingClass','teaching-class','module_internship/schedule/teaching-class/index'
 UNION ALL SELECT 161,2,'学生名单管理','InternshipStudentRoster','student-roster','module_internship/schedule/student-roster/index'
 UNION ALL SELECT 161,3,'指导教师管理','InternshipInstructor','instructor','module_internship/schedule/instructor/index'
 UNION ALL SELECT 161,4,'实习安排管理','InternshipArrangement','arrangement','module_internship/schedule/arrangement/index'

 UNION ALL SELECT 162,1,'保险登记','InternshipInsuranceRegistration','registration','module_internship/insurance/registration/index'
 UNION ALL SELECT 162,2,'保险审核','InternshipInsuranceReview','review','module_internship/insurance/review/index'
 UNION ALL SELECT 162,3,'保险记录查询','InternshipInsuranceRecords','records','module_internship/insurance/records/index'

 UNION ALL SELECT 163,1,'实习申报','InternshipHolidayApplication','application','module_internship/holiday/application/index'
 UNION ALL SELECT 163,2,'实习材料管理','InternshipHolidayMaterials','materials','module_internship/holiday/materials/index'
 UNION ALL SELECT 163,3,'实习审批','InternshipHolidayReview','review','module_internship/holiday/review/index'
 UNION ALL SELECT 163,4,'已批准实习','InternshipHolidayApproved','approved','module_internship/holiday/approved/index'

 UNION ALL SELECT 164,1,'特色学院项目管理','SpecialCollegeProject','project','module_internship/special-college/project/index'
 UNION ALL SELECT 164,2,'年度填报任务','SpecialCollegeTask','task','module_internship/special-college/task/index'
 UNION ALL SELECT 164,3,'学院年度填报','SpecialCollegeAnnual','annual','module_internship/special-college/annual/index'
 UNION ALL SELECT 164,4,'历史数据与材料','SpecialCollegeHistory','history','module_internship/special-college/history/index'

 UNION ALL SELECT 165,1,'7-11基地数据导出','InternshipExport711','base-711','module_internship/export/base-711/index'
 UNION ALL SELECT 165,2,'7-12学生实习数据导出','InternshipExport712','student-712','module_internship/export/student-712/index'
 UNION ALL SELECT 165,3,'实习监管数据导出','InternshipExportSupervision','supervision','module_internship/export/supervision/index'
 UNION ALL SELECT 165,4,'导出记录','InternshipExportHistory','history','module_internship/export/history/index'

 UNION ALL SELECT 166,1,'基地与协议统计','InternshipStatsBase','base','module_internship/statistics/base/index'
 UNION ALL SELECT 166,2,'实习排课统计','InternshipStatsSchedule','schedule','module_internship/statistics/schedule/index'
 UNION ALL SELECT 166,3,'实习保险统计','InternshipStatsInsurance','insurance','module_internship/statistics/insurance/index'
 UNION ALL SELECT 166,4,'假期实习统计','InternshipStatsHoliday','holiday','module_internship/statistics/holiday/index'
 UNION ALL SELECT 166,5,'特色学院统计','InternshipStatsSpecial','special','module_internship/statistics/special/index'
 UNION ALL SELECT 166,6,'暑期实习汇总','InternshipStatsSummer','summer','module_internship/statistics/summer/index'
) x
WHERE NOT EXISTS
(
 SELECT 1 FROM sys_menu m
 WHERE m.parent_id=x.parent_id
   AND m.route_path=x.route_path
   AND m.scope='web'
   AND m.is_deleted=0
);

SELECT
 p.name AS parent_menu,
 m.id,
 m.name,
 m.route_path,
 m.component_path,
 m.hidden
FROM sys_menu m
JOIN sys_menu p ON p.id=m.parent_id
WHERE m.parent_id IN (159,161,162,163,164,165,166)
  AND m.is_deleted=0
ORDER BY p.`order`,m.`order`,m.id;

SELECT parent_id,route_path,COUNT(*) AS menu_count
FROM sys_menu
WHERE parent_id IN (159,161,162,163,164,165,166)
  AND is_deleted=0
GROUP BY parent_id,route_path
HAVING COUNT(*)>1;

-- 检查结果后手动 COMMIT 或 ROLLBACK