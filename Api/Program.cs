using Amarte;
using Api.Context;
using Api.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddDbContext<AmarteDbContext>(ops => ops.UseNpgsql("name=AmarteConnection"));
//builder.Services.AddAuthentication().AddBearerToken(IdentityConstants.BearerScheme);
//builder.Services.AddAuthorizationBuilder();
builder.Services.AddUsersConfiguration();

var crossOriginResourceSharingPolicyConfiguration = builder.Configuration.GetSection("CrossOriginResourceSharingPolicy").Get<CrossOriginResourceSharingPolicyConfiguration>();
builder.Services.AddCors(options =>
{
    options.AddPolicy("CrossOriginResourceSharingPolicy",
    builder => builder.WithOrigins(
        crossOriginResourceSharingPolicyConfiguration.AllowedOrigins.ToArray())
        .AllowAnyHeader()
        .AllowAnyMethod()
    );
});
builder.Services.AddAuthorization();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

StartupExtensions.AddUsersControllers(app);
app.UseCors("CrossOriginResourceSharingPolicy");
app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

