//
//  VT3DSController.h
//  MidtransCoreKit
//
//  Created by Nanang Rafsanjani on 2/17/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "MidtransTransactionResult.h"
@class MidtransTransaction,MidtransTransactionResult;
@protocol Midtrans3DSControllerDelegate<NSObject>
- (void)rbaDidGetTransactionStatus:(MidtransTransactionResult *)transactionResult;
- (void)rbaDidGetError:(NSError *)error;
@end

@interface Midtrans3DSController : UIViewController
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, readonly) NSURL *secureURL;
@property (nonatomic, readonly) NSString *token;
@property (nonatomic, readonly) MidtransTransaction *transcationData;
@property (nonatomic, readonly) MidtransTransactionResult *transactionResult;
@property (nonatomic,strong) NSString *titleOveride;
@property (nonatomic,weak) id<Midtrans3DSControllerDelegate>delegate;
- (instancetype)initWithToken:(NSString *)token
            transactionResult:(MidtransTransactionResult *)result
              transactionData:(MidtransTransaction*)transactionData;

- (void)showWithCompletion:(void(^)(NSError *error))completion;

@end
