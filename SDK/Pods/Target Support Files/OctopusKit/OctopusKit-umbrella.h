#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "OCDataManager.h"
#import "OCWebService.h"
#import "OCWebServiceConfig.h"
#import "OCWebServiceConstant.h"
#import "OCDataException.h"
#import "OctopusKit.h"
#import "OCDictionaryUtilities.h"
#import "RKHTTPUtilities.h"
#import "RKSerialization.h"
#import "RKURLEncodedSerialization.h"
#import "CKStringUtils.h"
#import "NSDictionary+OCHelper.h"
#import "NSDictionary+STHelper.h"
#import "NSMutableDictionary+STHelper.h"

FOUNDATION_EXPORT double OctopusKitVersionNumber;
FOUNDATION_EXPORT const unsigned char OctopusKitVersionString[];

