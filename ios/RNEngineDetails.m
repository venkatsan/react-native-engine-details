
#import "RNEngineDetails.h"

@implementation RNEngineDetails

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

#pragma mark - Pass Inputs From JSX
RCT_EXPORT_METHOD(printUserInputs:(NSString *)name andCATRectId:(NSString *)catRectId andPhoneNo:(int)phoneNumber){
    NSLog(@"Name:%@ \n CATRecId:%@ \n PhoneNumber:%d",name,catRectId,phoneNumber);
    RCTLogInfo(@"Name:%@ \n CATRecId:%@ \n PhoneNumber:%d",name,catRectId,phoneNumber);
}
#pragma end

#pragma mark - Pass input and process some logic in native class and callback output
RCT_EXPORT_METHOD(sendCallBackToFrontEnd:(NSString *)name andCATRectId:(NSString *)catRectId andCallBack:(RCTResponseSenderBlock)callback){
    callback(@[[NSString stringWithFormat:@"The Output Name is :%@ andCatRecId:%@",name,catRectId]]); //Output Params:{results(Array)}
}
#pragma end

#pragma mark - Async callback from native class
RCT_EXPORT_METHOD(sendAsyncCallBackToFrontEnd:(NSString *)name andCATRectId:(RCTPromiseResolveBlock)resolveCB andCallBack:(RCTPromiseRejectBlock)rejectCB){
    resolveCB(@[[NSString stringWithFormat:@"The Output Name is :%@",name]]); //Output Params:{results(id)}
    rejectCB(@"500",@"Internal Server Error",nil); //output params:{code(string),message(string),error(NSError)}
}
RCT_REMAP_METHOD(){
    
}
#pragma end
@end
  
