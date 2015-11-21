%hook SBPlatformController
- (id)init
{
	SBPlatformController *platformController = %orig();
	[platformController setValue:[NSNumber numberWithBool:YES] forKey:@"_medusaDevice"];
	[platformController setValue:[NSNumber numberWithBool:YES] forKey:@"_supportsAllMedusaFeatures"];
	return platformController;
}
%end