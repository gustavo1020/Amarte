using Api.Context;
using Api.Models.Identity;
using Microsoft.AspNetCore.Identity;

namespace Amarte
{
    public static class StartupExtensions
    {
        public static void AddUsersConfiguration(this IServiceCollection services)
        {
            services.AddIdentity<IdeUser, IdeRol>( options =>
            {
               options.Password.RequireDigit = true;
               options.Password.RequireLowercase = true;
               options.Password.RequireUppercase = true;
               options.Password.RequireNonAlphanumeric = false;
               options.Password.RequiredLength = 8;

               options.SignIn.RequireConfirmedEmail = false;
               options.Lockout.AllowedForNewUsers = true;
               options.Lockout.MaxFailedAccessAttempts = 5;
            }).AddRoles<IdeRol>().AddDefaultTokenProviders().AddEntityFrameworkStores<AmarteDbContext>().AddApiEndpoints();
        }
        public static void AddUsersControllers(this WebApplication webApplication)
        {
            webApplication.MapGroup("/Account").MapIdentityApi<IdeUser>().WithTags("Account");

        }
    }
}
