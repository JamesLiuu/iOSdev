//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

- (void)addMessage:(NSString *)dest origin:(NSString *)origin {
    
    self.dest = name;
    self.origin = origin;
}

@end

@implementation Passenger

// 去订票
- (BOOL)bookTicket:(Orders *)ticket{
    // 加入未出行订单
    [unusedOrders addObjectsFromArray:ticket];
}

// 去检票
- (BOOL)wicket:(Orders *)ticket{
    NSInteger count = unusedOrders.count;
    for (NSInteger i = 0; i < count; i++) {
        Orders *order = unusedOrders[i];
        // 在未出行订单中找到目标订单
        if(order.dest == ticket.dest && order.origin == ticket.origin){
            // 加入历史订单，从未出行订单中删除
            [historyOrders addObjectsFromArray:ticket];
            [unusedOrders removeObject:order];
            return true;
        }
    }
    return false;
}

@end
