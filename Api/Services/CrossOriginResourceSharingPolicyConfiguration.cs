namespace Api.Services
{
    public class CrossOriginResourceSharingPolicyConfiguration
    {
        public required IEnumerable<string> AllowedOrigins { get; set; }
    }
}
