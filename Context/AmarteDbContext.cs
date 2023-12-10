using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Amarte.Context
{
    public class AmarteDbContext : IdentityDbContext
    {
        public AmarteDbContext(DbContextOptions options) : base(options)
        {
        }
    }
}
