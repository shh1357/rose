// Example ROSE Preprocessor used for testing ROSE infrastructure
// This trivial example ROSE translator can be considered to be user code.

// User code typically includes "rose.h", not "sage3basic.h"
#include "rose.h"


int
main( int argc, char * argv[] )
   {
     RoseTestTranslator test;

  // returns an error if any of the front-end, mid-end, or back-end fails
     return test.translate(argc,argv);
   }

/* 
alternative usage:
int main( int argc, char * argv[] )
   {
     SgProject* sageProject = frontend(argc,argv);
     AstTests::runAllTests(sageProject);
     return backend(sageProject); // only backend error code is reported
   }
*/
