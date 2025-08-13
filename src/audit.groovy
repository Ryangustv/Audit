@GrabConfig(systemClassLoader=true)
@Grab('org.postgresql:postgresql:42.6.0')
import groovy.sql.sql
import java.nio.file.Files
import java.nio.file.Paths

//conexão ERP
def erpUrl = 'jdbc:postgresql://localhost:5442/ERP'
def erpUser = 'postgres'
def erpPass = '123'

//conexão HUB
def hubUrl = 'jdbc:postgresql://localhost:5432/HUB'
def hubUser = 'postgres'
def hubPass = '123'


def erpSql = Sql.newInstance(erpUrl, erpUser, erpPass, 'org.postgresql.Driver')
def hubSql = Sql.newInstance(hubUrl, hubUser, hubPass, 'org.postgresql.Driver')



