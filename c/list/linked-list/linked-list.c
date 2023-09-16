#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int value;
    struct Node* next;
} Node;

typedef struct LinkedList {
    Node* head;
    Node* tail;
    int length;
} LinkedList;

LinkedList* newLinkedList() {
    LinkedList* list = malloc(sizeof(LinkedList));
    list->head = NULL;
    list->tail = NULL;
    list->length = 0;
    return list;
}

void prepend(LinkedList* list, int value) {
    Node* newNode = malloc(sizeof(Node));
    newNode->value = value;
    newNode->next = list->head;
    list->head = newNode;
    
    if (list->tail == NULL) {
        list->tail = newNode;    
    }

    list->length++;
}

void insertAt(LinkedList* list, int value, int idx) {
    if (idx > list->length) {
        printf("index out of bound\n");
        return;
    }

    if (idx == 0) {
        prepend(list, value);
        return;
    }

    Node* newNode = malloc(sizeof(Node)); 
    printf("newNode: %lu\n", sizeof(Node));
    newNode->value = value;
    newNode->next = NULL;
    
    int counter = 0;
    Node* currentNode = list->head;
    while (counter < idx - 1) {
        if (currentNode != NULL) {
            currentNode = currentNode->next;
        }

        counter++;
    }

    if (currentNode != NULL) {
        newNode->next = currentNode->next;
        currentNode->next = newNode;
    }

    list->length++;
}

void deleteLinkedList(LinkedList* list) {
    Node* current = list->head;
    while (current != NULL) {
        Node* next = current->next;
        free(current);
        current = next;
    }
    free(list);
}

int main() {
    LinkedList* list = newLinkedList();

    prepend(list, 1);
    prepend(list, 2);
    prepend(list, 3);

    insertAt(list, 0, 1);

    Node* current = list->head;
    while (current != NULL) {
        printf("%d->", current->value);
        current = current->next;
    }
    printf("NULL\n");

    deleteLinkedList(list);

    return 0;
}
