# MybatisLocalCacheTest
## MyBatis version
3.5.6

## Database vendor and version
vendor :mysql
version:5.7.3-m13
## Test case or example project

## Steps to reproduce
1.create session1 to query all students with mybatis
2.use session1 query all students with mybatis
3.use native jdbc update one student 
4.create session 2 to query all student with mybatis
## Expected result
1.get all students infos from db;
2.get all students infos from localCache;
3.one student was updated success in db; 
4.get modified students info from db;
## Actual result
1.get all students infos from db;  ok!
2.get all students infos from localCache; ok!
3.one student was updated success in db; ok!
4.get modified students info from db; no! get not modified students from localCache

## more infomation:
debug into BaseExecutor#createCacheKey
    CacheKey cacheKey = new CacheKey(); 
    cacheKey.update(ms.getId());//1 MappedStatement scope not session，but session shared
    cacheKey.update(rowBounds.getOffset());
    cacheKey.update(rowBounds.getLimit());
    cacheKey.update(boundSql.getSql());
