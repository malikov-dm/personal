-- для аудиторов
with q as (
	SELECT vu."ID" as user_id, vu."SysGroup_ID", vu."RoleInSys" , vs."Title" , u."Login", vg."ID" as group_id, vg."Title" 
	FROM dbo."SysUsers" vu
		inner join dbo."Users" u on u."ID" = vu."ObjectID" 
		inner join dbo."SysStorages" vs on vu."SysStorage_ID" = vs."ID"
		inner join dbo."SysGroups" vg on vg."SysId" = vu."SysStorage_ID" and vg."Type" = 0
	where vu."SysGroup_ID" is null
		and vu."RoleInSys" = 1
)
update dbo."SysUsers"
set "SysGroup_ID" = q.group_id 
from q
where "ID" = q.user_id