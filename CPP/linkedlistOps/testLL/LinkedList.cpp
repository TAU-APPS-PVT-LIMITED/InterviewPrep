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
            cout << temp->m_info << "->"; //Outputs value in node
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

