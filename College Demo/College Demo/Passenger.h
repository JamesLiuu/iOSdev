//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property (nonatomic, copy) NSString *dest;
@property (nonatomic, copy) NSString *origin;

@end

@interface Passenger : Person
// @property 属性

// 是否年满 18 岁
@property (nonatomic, copy) BOOL *adult;

// 历史订单 （数组）
@property (nonatomic, copy) NSMutableArray *historyOrders = [[NSMutableArray alloc]init];

// 未出行订单 （数组）
@property (nonatomic, copy) NSMutableArray *unusedOrders = [[NSMutableArray alloc]init];

// Function 方法

// 去订票
- (BOOL)bookTicket:(Orders *)ticket;

// 去检票
- (BOOL)wicket:(Orders *)ticket;

@end

NS_ASSUME_NONNULL_END
