library(bleedRiskPlp)
# USER INPUTS
#=======================
# The folder where the study intermediate and result files will be written:
outputFolder <- "add save location"

cdmDatabaseName <- 'your cdm database name'
cdmDatabaseSchema <- 'database schema with you cdm in'
cohortDatabaseSchema <- 'schema with you cohort table in'
cohortTable <- 'table name with cohorts'
oracleTempSchema <- NULL

dbms = 'your dmbs'
server = 'your server'
user = 'your user'
password = 'your pw'
port = 'your port'
connectionDetails <- DatabaseConnector::createConnectionDetails(dbms = dbms,
                                                                server = server,
                                                                user = user,
                                                                password = pw,
                                                                port = port)


# table name where the cohorts will be generated
cohortTable <- 'bleedRiskPlpCohort'
#=======================

execute(connectionDetails = connectionDetails,
        cdmDatabaseSchema = cdmDatabaseSchema,
        cdmDatabaseName = cdmDatabaseName,
        cohortDatabaseSchema = cohortDatabaseSchema,
	oracleTempSchema = oracleTempSchema,
        cohortTable = cohortTable,
        outputFolder = outputFolder,
        createProtocol = F,
        createCohorts = T,
        runAnalyses = T,
        createResultsDoc = F,
        packageResults = F,
        createValidationPackage = F,  
        #analysesToValidate = 1,
        minCellCount= 5,
        createShiny = F,
        createJournalDocument = F,
        analysisIdDocument = 1)

# Uncomment and run the next line to see the shiny results:
# PatientLevelPrediction::viewMultiplePlp(outputFolder)
