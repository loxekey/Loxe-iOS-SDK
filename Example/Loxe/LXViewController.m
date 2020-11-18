//
//  LXViewController.m
//  Loxe
//
//  Created by Harold Hababou on 11/14/2020.
//  Copyright (c) 2020 Harold Hababou. All rights reserved.
//

#import "LXViewController.h"
#import <Loxe/Loxe.h>

@interface LXViewController ()

@end

@implementation LXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(unlock)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Unlock" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
    
    [Loxe setupBluetooth:^(LXBluetoothState state) {
        NSLog(@"##############  Loxe Bluetooth state: %ld  ##############",(long)state);
    }];
}

- (void)unlock
{

    NSString *lockData = @"NmbRr1C0R0J1kaO5YRXHYLrMJnxsauBFEFKTCD+Fui0toljSCCg2TyZ635HA+ovYZsuua4jA8mFwaDERUrk/h8g4Mx80lCI7h0IOz6e3xs3vjlfccDWEED9rr+QYxuxp9UcYl2cGnJA0BsRstNoxe85VH2jqiZGIB4vR1mF73Q3aYmnwJMJFnWEWatuGrSeUDJ1pbd/kL8uSjXpeN78bmaWCoHNgBqisctwyLh93AaUyrVIgTQ2lfBNsuZD4NpCkEXdI6Nl0DCA8uXEvZ+We29OmVBCO2UJ+9BT/KQ35FO8NzLcPNzbb5YSH5+hwzQnK9yWW8F3rZmQE8aGa5IcI1/ovSdxS4NahSRo7fznmExhMefQdzZFi48Wx/YIPH0mbfVt34+ZYF8KKcB3pUb5sQOrizdu2iMWFUVhkdJ+1+o9xtF9LV0qmtO80UXm/EsnKnZQWFt0nJYkJwEv+Na6JKndkHbaE8G7xYpfeUwKE9y29hC6Ni0kXa+F8aewhmxdNkyOgjci6hiWST02F+jeZL6xZJ3+TTmpWzSfumiFt/ANEH00jfO6zTSJCzNpdPn0P6itN/zYh8ZBTzk3sQVk2cfs7s5W5wK3ZmhmQZdzwp9Ux50/NEgJQjXTm0tQ0nVf6B8LJam3BXqMpYprzgMr9ysjAbvzOgw==";
    
    [Loxe unlockWithLockData:lockData success:^(long long lockTime, NSInteger electricQuantity, long long uniqueId) {
        NSLog(@"Loxe: Unlocked!! lockTime = %ld, battery = %ld",(long)lockTime, (long)electricQuantity);
    } failure:^(LXError errorCode, NSString *errorMsg) {
        NSLog(@"Loxe Error Code = %ld : %@",(long)errorCode, errorMsg);
    }];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
