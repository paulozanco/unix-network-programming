/*
 Copyright 2018 Paulo Zanco, All rights reserved.

 Use of this software is subject to the terms of the Autodesk license
 agreement provided at the time of installation or download, or which
 otherwise accompanies this software in either electronic or hard copy form.

*/

#include "functions.h"

int factorial(int n){
   
   if(n!=1){
      return(n * factorial(n-1));
   }
   else return 1;
}
