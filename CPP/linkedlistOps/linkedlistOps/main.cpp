//
//  main.cpp
//  linkedlistOps
//
//  Created by Gaurav Gupta on 30/03/2021.
//

#include <iostream>
using namespace std;

struct Node {
    int data;
    Node *next;
};

Node* insertNode(Node*, Node, bool);
bool reverseList(Node*, Node*);
Node generateNode();
int showMenu();

int main(int argc, const char * argv[]) {
    Node *head = nullptr;
    Node *tail = nullptr;

    int choice = -1 ;
    do {
        choice = showMenu();
    } while (choice == -1 );

    switch (choice) {
        case 1:
        {
          Node newNode = generateNode();
          tail = insertNode(head, newNode, true);
          break;
        }
        case 2:
      {
        bool result = reverseList(head, tail);
        cout<<"Result of reverse operation is :" << (result == 1 ? "Success" : "Failure");
        break;
      }
    }
    
    return 0;
}
