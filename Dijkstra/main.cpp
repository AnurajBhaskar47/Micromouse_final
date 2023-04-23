#include <iostream>
#include <climits>

int NUM_NODES = 16;

#define NORTH 1
#define EAST 2
#define SOUTH 3
#define WEST 4

struct Point {
    bool inSPT;
    int pointID;
    int distance; 
    Point * prev;
    int northNeighbor;
    int rightNeightbor;
    int leftNeighbor;
    int southNeighbor;
};

void initialize_points_for_16_nodes(Point * points){
    for (int i = 0; i <  NUM_NODES; i ++){
        points[i].northNeighbor = i + 4;
        points[i].southNeighbor = i -4;
        points[i].leftNeighbor = i -1;
        points[i].rightNeightbor = i+1;
        if ( i>= 12 && i <=15){
            points[i].northNeighbor = -1;
        }
        if (i >=0 && i <= 3){
            points[i].southNeighbor = -1;
        }
        if (i %4 == 0){
            points[i].leftNeighbor= -1;
        }
        if (i %4 == 3){
            points[i].rightNeightbor = -1;
        }
    }
}


int findShortestDistanceInGraph(Point * points){
    int min= INT_MAX;
    int shortestPathPt = 0;
    for (int i = 0; i < NUM_NODES; i++){
        if (points[i].inSPT == false && points[i].distance < min){
            shortestPathPt = i;
            min = points[i].distance;
        }
    }
    return shortestPathPt;
}
int numberOfNodesToBeTraced = 0;



void getNumNodesToBeTraced(Point * points,int size, int * nodes, int source, int dest){
    int j = dest;
    int i = size - 1;
    while (j != source && j >=0 && i >= 0){
        nodes[i] = points[j].pointID;
        j = points[j].prev->pointID;
        i --;
    }
    nodes[0] = source;
}

int getDirection (Point * points, int firstPoint, int secondPoint){
    //use norht
    if (points[firstPoint].leftNeighbor == points[secondPoint].pointID){
        return WEST;
    }
    if (points[firstPoint].rightNeightbor == points[secondPoint].pointID){
        return EAST;
    }
    if (points[firstPoint].northNeighbor == points[secondPoint].pointID){
        return NORTH;
    }
    if (points[firstPoint].southNeighbor == points[secondPoint].pointID){
        return SOUTH;
    }
    return -1;
}

void backtrace(Point * points, int * nodes, int size, int * directionArray, int directionArraySize){
    for (int i = 0; i < directionArraySize; i ++){
        int direction = getDirection(points, nodes[i], nodes[i+1]);
        if (direction == -1){fprintf(stderr, "error in backtrace");}
        directionArray[i] = direction;
    }
}

void shortestPath(int graph[16][16], int source, int dest, int initialDirection){
    Point points [NUM_NODES];
    for (int i = 0; i < NUM_NODES; i++){
        points[i].pointID = i;
        points[i].distance = INT_MAX; 
        points[i].prev = NULL;
        points[i].inSPT = false;
    }
    initialize_points_for_16_nodes(points);
    points[source].distance = 0; 
    
    for (int i = 0; i < NUM_NODES && points[dest].inSPT == false; i++){
        
        int minPt = findShortestDistanceInGraph(points);
        
        points[minPt].inSPT = true;
        
        for (int j = 0; j < NUM_NODES; j++){
            if (points[j].inSPT == false && graph[minPt][j] && points[minPt].distance != INT_MAX && points[minPt].distance+ graph[minPt][j]< points[j].distance){
                points[j].prev = &points[minPt];
                points[j].distance = points[minPt].distance + graph[j][minPt];
            }
        }
    }
    
    int j = dest;
    
    int count = 0;
    while (j != source){
        count++;
        j = points[j].prev->pointID;
    }
    count ++; 
    int nodes [count];
    getNumNodesToBeTraced(points, count, nodes, source, dest);
    for (int i = 0; i < count; i++){
        fprintf(stdout, "%d,", nodes[i]);
    }
    fprintf(stdout, "\n");
    int directionsArray [count-1];
    backtrace(points, nodes, count, directionsArray, count-1);
    
}




int main(int argc, const char * argv[]) {
    
    int graph[16][16] = {
        {0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,1,0,1,0,0,40,0,0,0,0,0,0,0,0,0},
        {0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,0,40,0,0,0,0,0,0,0,50,0,0,0,0,0},
        {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,50,0,0,0,0,0,0,0,20,0},
        {0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,5},
        {0,0,0,0,0,0,0,0,0,0,0,1,0,0,5,0},
    };
    
    
    shortestPath(graph, 0, 14, 2);

    
}
