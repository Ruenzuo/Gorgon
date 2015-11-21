%hook SBPlatformController
- (id)init
{
	SBPlatformController *platformController = %orig();
	[platformController setValue:[NSNumber numberWithBool:YES] forKey:@"_medusaDevice"];
	return platformController;
}
%end