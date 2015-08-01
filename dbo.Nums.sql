
if OBJECT_ID(N'dbo.Nums',N'U') is not null
	drop table dbo.Nums;
go

create table dbo.Nums (
	n int not null primary key
);

declare @i  as int = 1;
begin tran
	while @i <= 100000
	begin
		insert into dbo.Nums values(@i);
		set @i = @i + 1;
	end
commit tran

select * from dbo.Nums

