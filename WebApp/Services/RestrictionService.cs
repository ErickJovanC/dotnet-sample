using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;
using Microsoft.EntityFrameworkCore;


namespace DotNetLocalDb.WebApp.Services;

public class RestrictionService : IRestrictionService
{
    private readonly DataDbContext context;

    public RestrictionService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateRestriction(RestrictionDTO restrictionDTO)
    {
        Restriction restriction = new()
        {
            DateStart = restrictionDTO.DateStart,
            DateEnd = restrictionDTO.DateEnd,
        };

        context.Restriction.Add(restriction);
        context.SaveChanges();

        RestrictionEntity restrictionEntity = new ()
        {
            RestrictionId = restriction.RestrictionId,
            EntityId = restrictionDTO.EntityId,
        };

        context.RestrictionEntity.Add(restrictionEntity);
        context.SaveChanges();
    }

    public List<Restriction> GetAllRestrictions()
    {
        return context.Restriction.Include(x => x.RestrictionEntity).ToList();
    }
}