//
//  DatasourceManager.h
//  MyStore
//
//  This App has been generated using IBM Mobile App Builder
//

#import <Foundation/Foundation.h>

@class ProductsDS;
@class ContactScreen1DS;
@class EmptyDatasource;

@interface DatasourceManager : NSObject

@property (nonatomic, strong) ProductsDS *productsDS;

@property (nonatomic, strong) ContactScreen1DS *contactScreen1DS;

@property (nonatomic, strong) EmptyDatasource *emptyDatasource;

/**
 Singleton
 @return Class instance
 */
+ (instancetype)sharedInstance;

/**
 Synchronize all datasource
 */
- (void)sync;

@end
