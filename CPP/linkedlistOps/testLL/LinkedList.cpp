#include "LinkedList.h"

/*Title: LinkedList.cpp
Author: CMSC 202
Date: 3/16/2021
Description: This is introducing linked lists in C++.
*/

LinkedList::LinkedList() {
    m_head = nullptr; //Sets the pointer to point at nothing
    m_tail = nullptr; //Sets the pointer to point at nothing
    m_size = 0; //Sets the size of the linked list to 0
}

LinkedList::~LinkedList() {
    Node *curr = m_head;
    while (curr != nullptr) { //Iterates through and removes each node
        m_head = curr; //sets m_head to curr
        curr = curr->m_next; //moves curr to next node
        delete m_head; //delete m_head;
    }
    //Resets all of the static linked list pointers
    m_head = nullptr; //Sets the pointer to point at nothing
    m_tail = nullptr; //Sets the pointer to point at nothing
    m_size = 0; //Sets the size of the linked list to 0
}

void LinkedList::InsertFront(int data) {
    Node *temp = new Node(); //Builds a new node
    temp->m_info = data; //Set data of new node
    temp->m_next = m_head; //If list is empty, m_next = nullptr else first node
    m_head = temp; //Points m_head at new node
    m_size++; //Increments the size of the linked list
}

void LinkedList::InsertFront(char data) {
    Node *temp = new Node(); //Builds a new node
    temp->m_info = int(data); //sets the ascii value
    temp->dna = data; //Set dna of new node
    temp->m_next = m_head; //If list is empty, m_next = nullptr else first node
    m_head = temp; //Points m_head at new node
    m_size++; //Increments the size of the linked list
}

void LinkedList::InsertEnd(char data) {
    Node *temp = new Node(); //Builds a new node
    temp->m_info = int(data); //sets the ascii value
    temp->dna = data; //Set dna of new node
    if (m_size == 0) {
        //adding the first element
        m_head = temp;
        m_tail = temp;
        temp->m_next = nullptr;
    } else {
        //already some elements exists hence different logic
        m_tail->m_next = temp;
        temp->m_next = nullptr;
        m_tail = temp;
    }
    m_size++;
}

void LinkedList::RemoveFront() {
    Node *curr = m_head; //Node pointer
    if (m_size == 0) { //Special case if list empty
        cout << "No nodes in linked list" << endl;
        return;
    } else { //Normal case if size > 0
        m_head = m_head->m_next;
        delete curr;
        curr = nullptr;
    }
}

void LinkedList::Display() {
    if (m_size == 0) { //Checks to see if the linked list is empty
        cout << "The linked list is empty" << endl; //Output if it is empty
    } else {
        Node *temp = m_head; //Creates a new pointer to iterate over list
        while (temp != nullptr) { //Iterates to end of list
            cout << temp->m_info <<":"<<temp->dna<<"->"; //Outputs value in node
            temp = temp->m_next; //Moves to m_next node
        }
        cout << "END" << endl; //Indicates the end of the linked list
    }
}
//*******************************************
//Implement DisplayEvery HERE
//Use a While Loop for the base requirement
//If you get this to work and still have time, implement using a for loop
//*******************************************

void LinkedList::DisplayEvery(int x) {
    Node *temp = m_head; //Creates a new pointer to iterate over list
    int itr = 0;
    cout << temp->m_info << "->"; //Outputs value in node
    while (temp != nullptr) { //Iterates to end of list
        if (itr == x) {
            itr = 0;
            cout << temp->m_info << "->"; //Outputs value in node
        }
        ++itr;
        temp = temp->m_next; //Moves to m_next node
    }
    cout << "END" << endl; //Indicates the end of the linked list

    //This is for loop implmentation
//    cout << temp->m_info << "->"; //Outputs value in node
//    int tmp = x;
//    for (int i = 99; i >=0 ; --i,--tmp) {
//        if (temp != nullptr) {
//            if (tmp == 0) {
//                tmp = x;
//                cout << temp->m_info << "->"; //Outputs value in node
//            }
//        }
//        temp = temp->m_next; //Moves to m_next node
//    }
//    cout << "END" << endl; //Indicates the end of the linked list
}

void LinkedList::reverseLL(){
    Node *curr = m_head ->m_next;
    Node *prev = m_head;
    Node *next = curr->m_next;
    
    cout<<"At the start: curr->m_info is "<<curr->m_info<<", next->m_info is "<<next->m_info<<", prev->m_info is "<<prev->m_info<<endl;
    while (next != nullptr) {
        curr->m_next = prev;
        cout<<"after curr->m_next = prev; next of curr node data is: "<<curr->m_next->m_info<<endl;
        prev = curr;
        cout<<"after prev = curr; prev data is: "<<prev->m_info<<endl;
        curr = next;
        cout<<"after curr = next; curr node data is: "<<curr->m_info<<endl;
        next = next->m_next;
        if (next == nullptr){
            break;
        }
        cout<<"after next = next->m_next; next node data is: "<<next->m_info<<endl;
        cout<<"After reversal following is the status:"<<endl;
        cout<<"curr->m_info is "<<curr->m_info<<", next->m_info is "<<next->m_info<<", prev->m_info is "<<prev->m_info<<endl;
    }
    //curr is pointing to nullptr, hence its reached tail
    //swap head and tail
    //at the end of the while loop, curr points to tail and prev to one behind it and next to null, hence we need to do one more iteration of swap
    curr->m_next = prev;
    prev = curr;
    //at this stage prev is same as tail;
    m_tail = m_head;
    m_head = prev;
    m_tail->m_next = nullptr;
    curr = nullptr;
    prev = nullptr;
    next = nullptr;
}

bool LinkedList::compareLL(LinkedList &newLL){
    //check if a newLL exists in currentLinkedList
    bool llexists = false;
    Node *currFromNewLL = newLL.m_head;
    Node *curr = m_head;

//    while (curr != m_tail) {
//        if (curr->m_info == currFromNewLL->m_info && currFromNewLL->m_next != nullptr){
//            curr = curr->m_next;
//            currFromNewLL = currFromNewLL->m_next;
//        } else {
//            currFromNewLL = currFromNewLL->m_next;
//        }
//    }
    Node *from = nullptr;
    while (currFromNewLL != nullptr) {
        //find the first match of current node from newLL in the myLL
        while (curr != nullptr) {
            if (curr->m_info == currFromNewLL->m_info){
                from = curr;
                llexists = true;
                break;
            }
            else{
                curr = curr->m_next;
                llexists = false;
            }
        }
        if (from == nullptr){
            //hence we reached the end of the myLL and not even the first element from newLL exists
            break;
        } else {
            curr = from->m_next;
            currFromNewLL = currFromNewLL->m_next;
        }
    }

    return llexists;
}

bool LinkedList::compareDNA(LinkedList &newLL){
    //check if a newLL exists in currentLinkedList
    bool llexists = false;
    Node *currFromNewLL = newLL.m_head;
    Node *curr = m_head;

    Node *from = nullptr;
    while (currFromNewLL != nullptr) {
        //find the first match of current node from newLL in the myLL
        while (curr != nullptr) {
            if (curr->dna == currFromNewLL->dna){
                from = curr;
                llexists = true;
                break;
            }
            else{
                curr = curr->m_next;
                llexists = false;
            }
        }
        if (from == nullptr){
            //hence we reached the end of the myLL and not even the first element from newLL exists
            break;
        } else {
            curr = from->m_next;
            currFromNewLL = currFromNewLL->m_next;
        }
    }

    return llexists;
}
