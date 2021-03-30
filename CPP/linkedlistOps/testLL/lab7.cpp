#include <iostream>
#include <string>
#include "LinkedList.h"
using namespace std;

int main () {
  LinkedList myLL;
  for(int i = 0; i < 100; i++){
    myLL.InsertFront(i);
  }
  myLL.Display();
  myLL.DisplayEvery(10);
  myLL.~LinkedList(); //explicitly calling the destructor
  return 0;
}
