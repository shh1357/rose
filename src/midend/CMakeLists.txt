add_subdirectory(abstractHandle)
add_subdirectory(astDiagnostics)
add_subdirectory(astProcessing)
add_subdirectory(astQuery)
add_subdirectory(astRewriteMechanism)
add_subdirectory(astUtil)
add_subdirectory(binaryAnalyses)
add_subdirectory(programTransformation)
if(NOT enable-internalFrontendDevelopment)
  add_subdirectory(programAnalysis)
endif()
