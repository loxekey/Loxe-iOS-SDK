//
//  Loxe.h
//  Loxe
//
//  Created by Harold Hababou on 11/17/20.
//

#import <Foundation/Foundation.h>

//! Project version number for Loxe.
FOUNDATION_EXPORT double LoxeVersionNumber;

//! Project version string for Loxe.
FOUNDATION_EXPORT const unsigned char LoxeVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <Loxe/PublicHeader.h>

#import <LXBlocks.h>

@interface Loxe : NSObject

/**
 Setup Bluetooth

 @param bluetoothStateObserver A block invoked when the bluetooth setup finished
 */
+ (void)setupBluetooth:(LXBluetoothStateBlock)bluetoothStateObserver;

/**
 Set the lock time

 @param timestamp A timestamp（millisecond）
 @param lockData The lock data string used to operate lock
 @param success A block invoked when the lock time is set
 @param failure A block invoked when the operation fails
 */
+ (void)setLockTimeWithTimestamp:(long long)timestamp
                        lockData:(NSString *)lockData
                         success:(LXSucceedBlock)success
                         failure:(LXFailedBlock)failure;


/**
 Get the lock time

 @param lockData The lock data string used to operate lock
 @param success A block invoked when the lock time is got
 @param failure A block invoked when the operation fails
 */
+ (void)getLockTimeWithLockData:(NSString *)lockData
                        success:(LXGetLockTimeSucceedBlock)success
                        failure:(LXFailedBlock)failure;


/**
 Get the lock electric quantity

 @param lockData The lock data string used to operate lock
 @param success A block invoked when the lock power is got
 @param failure A block invoked when the operation fails
 */
+ (void)getElectricQuantityWithLockData:(NSString *)lockData
                                success:(LXGetElectricQuantitySucceedBlock)success
                                failure:(LXFailedBlock)failure;



/**
 Unlock

 @param lockData The lock data string used to operate lock
 @param success A block invoked when the lock is unlocked
 @param failure A block invoked when the operation fails
 */
+ (void)unlockWithLockData:(NSString *)lockData
                             success:(LXUnlockSucceedBlock)success
                             failure:(LXFailedBlock)failure;

@end
