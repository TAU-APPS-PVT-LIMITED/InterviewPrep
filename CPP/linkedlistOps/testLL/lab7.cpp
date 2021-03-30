#include <iostream>
#include <string>
#include <vector>
#include "LinkedList.h"
using namespace std;

int main () {
    LinkedList myLL,newLL;
    vector<char> suspectDNA = {'C','C','T','A','A','T','T','T','G','C','A','G','A','G'};
    vector<char> evidence = {'A','A','T','T','T','G','C','A','G'};
    LinkedList llsuspectDNA, llevidenceDNA;
    for(vector<char>::reverse_iterator i = suspectDNA.rbegin(); i != suspectDNA.rend() ; i++){
        llsuspectDNA.InsertFront(*i);
    }
    llsuspectDNA.Display();

    for(vector<char>::iterator i = evidence.begin(); i != evidence.end() ; i++){
        llevidenceDNA.InsertEnd(*i);
    }
    llevidenceDNA.Display();

//    for(int i = 0; i < 4; i++){
//        newLL.InsertFront(i);
//    }
//
//    for(int i = 0; i < 30; i++){
//        myLL.InsertFront(i);
//    }
//
//    for(int i = 0; i < 4; i++){
//        newLL.InsertFront(i);
//    }
    //bool isSuspectMatched = llevidenceDNA.compareDNA(llsuspectDNA);
    bool isSuspectMatched = llsuspectDNA.compareDNA(llevidenceDNA);
    cout<<"Result of existence check of newLL in myLL: "<<(isSuspectMatched == 1 ? "Exists":"Not Exists")<<endl;
//    myLL.Display();
//    newLL.Display();
//    bool areEqual = myLL.compareLL(newLL);
//    cout<<"Result of existence check of newLL in myLL: "<<(areEqual == 1 ? "Exists":"Not Exists")<<endl;
//    myLL.DisplayEvery(10);
//    myLL.reverseLL();
//    areEqual = myLL.compareLL(newLL);
//    cout<<"Result of existence check of newLL in myLL: "<<(areEqual == 1 ? "Exists":"Not Exists")<<endl;
//    myLL.Display();
    //myLL.~LinkedList(); //explicitly calling the destructor
    return 0;
}
