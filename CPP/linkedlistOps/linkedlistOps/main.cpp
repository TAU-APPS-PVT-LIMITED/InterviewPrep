//
//  main.cpp
//  linkedlistOps
//
//  Created by Gaurav Gupta on 30/03/2021.
//

#include <iostream>
#include <time.h>
#include <ctime>
#include <vector>

using namespace std;

struct Node {
    int data;
    Node *next;
};

//void insertNode(Node*, Node*, Node&);
void insertNode(Node**, Node**,Node*);
bool reverseList(Node*, Node*);
//Node* generateNode();
void generateNode(Node&);
void generateLL(Node**, Node**);
void printLL(Node*);
int showMenu();
void deallocLL(Node**);

int main(int argc, const char * argv[]) {
    Node *head = nullptr;
    Node *tail = nullptr;
    srandom(uint(time(NULL)));
    int choice = -1 ;
    do {
        choice = showMenu();
    } while (choice == -1 );

    switch (choice) {
        case 1:
        {
          generateLL(&head, &tail);
          printLL(head);
          break;
        }
        case 2:
      {
        bool result = reverseList(head, tail);
        cout<<"Result of reverse operation is :" << (result == 1 ? "Success" : "Failure");
        break;
      }
    }
    //on exit destroy all the nodes;
    deallocLL(&head);
    return 0;
}

int showMenu(){
    int userChoice = -1;
    cout<<"Select an operation:"<<endl;
    cout<<"1:\tGenerate a list\n";
    cout<<"2:\tReverse a list\n";
    cin >> userChoice;
    return userChoice;
}

void generateNode(Node &newNode){
    newNode.data = int(random());
    newNode.next = nullptr;
}

void generateLL(Node** head, Node** tail){
    int numOfNodes = 0;
    cout<<"Enter number of nodes need to be inserted in LL\n";
    cin>>numOfNodes;
    vector<Node> nodes = vector<Node>();
    Node* lhead = nullptr;
    Node* ltail = nullptr;
    for (int i=0; i<numOfNodes; i++) {
        //generate a node
        Node *newNode = new Node();
        generateNode(*newNode);
        nodes.push_back(*newNode);
    }
    cout<<"Generating the linked list from the nodes\n";
    //generate the linkedList
    for (size_t i = 0;i<nodes.size();i++) {
        cout<<"Adding node at position: "<<i<<endl;
        insertNode(&lhead, &ltail, &nodes[i]);
    }
    *head = lhead;
    *tail = ltail;
}

void insertNode(Node* *head, Node* *tail,Node* node){
//void insertNode(Node* head, Node* tail,Node &node){
    if (*head == nullptr) {
        cout<<"Inserting the node very first time."<<endl;
        *head = node;
        *tail = node;
    } else {
        int i = 1;
        Node *curr = *head;
        while (curr != *tail) {
            curr = curr->next;
            i++;
        }
        cout<<"Inserting node at pos: "<<i<<endl;
        node->next = curr->next;
        curr->next = node;
        *tail = node;
        curr = nullptr;
    }
}

bool reverseList(Node*, Node*){
    return false;
}

void printLL(Node *head)
{
    Node *curr = head;
    int i = 0;
    while (curr != nullptr) {
        cout<<"Current node at position: " <<i<<" having data: ("<<curr->data<<" ) ->"<<endl;
        curr = curr -> next;
        i++;
    }
}

void deallocLL(Node** head){
    Node *curr = *head;
    Node *next = nullptr;
    int i = 0;
    while (curr != nullptr) {
        cout<<"Deleting node at pos:" <<i<<"having data: "<<curr->data<<endl;
        *head = curr;
        curr = (*head) -> next;
        i++;
        delete *head;
        //curr = next;

    }
    *head = nullptr;
}

