#import<Foundation/Foundation.h>
#include "stu.m"
#include "stu.h"

int main(int argc,const char *argv[]){
   NSLog(@"%@",@"Hello world");
   Student *student = [[Student alloc] init];
    [student study:1];
   return(0);
}
