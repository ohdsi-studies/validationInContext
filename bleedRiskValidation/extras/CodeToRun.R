library(BleedModelVal)
# USER INPUTS
#=======================
# The folder where the study intermediate and result files will be written:
outputFolder <- "location here to save results"

cdmDatabaseName <- 'your cdm database name'
cdmDatabaseSchema <- 'database schema with you cdm in'
cohortDatabaseSchema <- 'schema with you cohort table in'
cohortTable <- 'table name with cohorts'

dbms <- 'your cdm dbms'
server <- 'your server'
user <- 'your username'
pw <- 'your pw'
port <- 'your port'
connectionDetails <- DatabaseConnector::createConnectionDetails(dbms = dbms,
                                                                server = server,
                                                                user = user,
                                                                password = pw,
                                                                port = port)

# table name where the cohorts will be generated
cohortTable <- 'BleedModelValCohort'

# TAR settings
sampleSize <- NULL
riskWindowStart <- 1
startAnchor <- 'cohort start'
riskWindowEnd <- 365
endAnchor <- 'cohort start'
firstExposureOnly <- T
removeSubjectsWithPriorOutcome <- F
priorOutcomeLookback <- 99999
requireTimeAtRisk <- F
minTimeAtRisk <- 1
includeAllOutcomes <- T


#=======================

BleedModelVal::execute(connectionDetails = connectionDetails,
                                    cdmDatabaseSchema = cdmDatabaseSchema,
                                    cdmDatabaseName = cdmDatabaseName,
                                    cohortDatabaseSchema = cohortDatabaseSchema,
                                    cohortTable = cohortTable,
                                    sampleSize = sampleSize,
                                    riskWindowStart = riskWindowStart,
                                    startAnchor = startAnchor,
                                    riskWindowEnd = riskWindowEnd,
                                    endAnchor = endAnchor,
                                    firstExposureOnly = firstExposureOnly,
                                    removeSubjectsWithPriorOutcome = removeSubjectsWithPriorOutcome,
                                    priorOutcomeLookback = priorOutcomeLookback,
                                    requireTimeAtRisk = requireTimeAtRisk,
                                    minTimeAtRisk = minTimeAtRisk,
                                    includeAllOutcomes = includeAllOutcomes,
                                    outputFolder = outputFolder,
                                    createCohorts = T,
                                    runAnalyses = T,
                                    viewShiny = F,
                                    packageResults = F,
                                    minCellCount= 5,
                                    verbosity = "INFO",
                                    cdmVersion = 5)
