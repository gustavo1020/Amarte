using Microsoft.AspNetCore.Identity;

namespace Api.Models.Identity
{
    public class IdeRol : IdentityRole<Guid>
    {
        public DateTime CreatedDate { get; set; }
        public DateTime LastUpdateDate { get; set; }
    }
}
