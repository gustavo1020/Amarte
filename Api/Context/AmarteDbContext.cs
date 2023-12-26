using Api.Models.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Api.Context
{
    public class AmarteDbContext : IdentityDbContext<IdeUser, IdeRol, Guid>
    {
        public AmarteDbContext(DbContextOptions options) : base(options)
        {
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<IdeUser>()
                .Property(d => d.CreatedDate)
                .ValueGeneratedOnAdd()
                .HasDefaultValueSql("CURRENT_TIMESTAMP");

            builder.Entity<IdeUser>()
                .Property(d => d.LastUpdateDate)
                .ValueGeneratedOnAddOrUpdate()
                .HasDefaultValueSql("CURRENT_TIMESTAMP");

            builder.Entity<IdeUser>()
                .Property(d => d.CreatedDate)
                .Metadata.SetBeforeSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeUser>()
                .Property(d => d.CreatedDate)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeUser>()
                .Property(d => d.LastUpdateDate)
                .Metadata.SetBeforeSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeUser>()
                .Property(d => d.LastUpdateDate)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeRol>()
                .Property(d => d.CreatedDate)
                .ValueGeneratedOnAdd()
                .HasDefaultValueSql("CURRENT_TIMESTAMP");

            builder.Entity<IdeRol>()
                .Property(d => d.LastUpdateDate)
                .ValueGeneratedOnAddOrUpdate()
                .HasDefaultValueSql("CURRENT_TIMESTAMP");

            builder.Entity<IdeRol>()
                .Property(d => d.CreatedDate)
                .Metadata.SetBeforeSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeRol>()
                .Property(d => d.CreatedDate)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeRol>()
                .Property(d => d.LastUpdateDate)
                .Metadata.SetBeforeSaveBehavior(PropertySaveBehavior.Ignore);

            builder.Entity<IdeRol>()
                .Property(d => d.LastUpdateDate)
                .Metadata.SetAfterSaveBehavior(PropertySaveBehavior.Ignore);

            base.OnModelCreating(builder);
        }
    }
}
