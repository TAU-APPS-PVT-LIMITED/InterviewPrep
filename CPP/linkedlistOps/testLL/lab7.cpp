#include <iostream>
#include <string>
#include "LinkedList.h"
using namespace std;

int main () {
    LinkedList myLL,newLL;
    for(int i = 0; i < 30; i++){
        myLL.InsertFront(i);
    }

    for(int i = 0; i < 4; i++){
        newLL.InsertFront(i);
    }

    myLL.Display();
    newLL.Display();
    bool areEqual = myLL.compareLL(newLL);
    cout<<"Result of existence check of newLL in myLL: "<<(areEqual == 1 ? "Exists":"Not Exists");
    //myLL.DisplayEvery(10);
    myLL.reverseLL();
    myLL.Display();
    myLL.~LinkedList(); //explicitly calling the destructor
    return 0;
}
