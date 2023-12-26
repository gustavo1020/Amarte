using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;

namespace Api.Models.Identity
{
    public class IdeUser : IdentityUser<Guid>
    {
        public DateTime CreatedDate { get; set; }

        public DateTime LastUpdateDate { get; set; }
    }
}
