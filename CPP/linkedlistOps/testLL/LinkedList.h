#ifndef LINKEDLIST_H
#define LINKEDLIST_H
/*Title: LinkedList.h
 Author: CMSC 202
 Date: 3/16/2021
 Description: This is the linked list for lab 7.
 */

#include <iostream>
using namespace std;

    //Each node of the linked list holds at least one piece of data and
    //at least one pointer (usually to the m_next node in the linked list)
struct Node {
    int m_info; //Data for the linked list
    char dna;
    Node *m_next; //Pointer to the m_next node of the linked list
};

class LinkedList{ //Linked list structure
public:
    LinkedList(); //Default constructor that builds an empty linked list
    ~LinkedList(); //Destructor that cleans up linked list
    void InsertFront(int data); //Function that inserts node at front with data value
    void InsertFront(char data); //Function that inserts node at front with data value
    void InsertEnd(char data);
    void RemoveFront(); //Function removes the first node in the list
    void Display(); //Function that iterates over the linked list to display the contents
    void DisplayEvery(int x); //Function that displays every x nodes
    void reverseLL();
    bool compareLL(LinkedList &newLL);
    bool compareDNA(LinkedList &newLL);
private:
    Node *m_head; //Pointer to the beginning of the linked list
    Node *m_tail; //Pointer to the end of the linked list
    int m_size; //Counter for the size of the linked list
};

#endif
