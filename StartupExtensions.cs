using Amarte.Context;
using Microsoft.AspNetCore.Identity;

namespace Amarte
{
    public static class StartupExtensions
    {
        public static void AddUsersConfiguration(this IServiceCollection services)
        { 
            services.AddIdentityApiEndpoints<IdentityUser>().AddEntityFrameworkStores<AmarteDbContext>();
        }
        public static void AddUsersControllers(this WebApplication webApplication)
        {
             webApplication.MapGroup("/Account").MapIdentityApi<IdentityUser>().WithTags("Account");
                 
        }
    }
}
