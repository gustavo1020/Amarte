using Amarte;
using Amarte.Context;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddUsersConfiguration();
builder.Services.AddDbContext<AmarteDbContext>(ops => ops.UseNpgsql("name=AmarteConnection"));

builder.Services.AddAuthorization();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

StartupExtensions.AddUsersControllers(app);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
