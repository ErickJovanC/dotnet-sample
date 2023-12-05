using AutoMapper;
using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Utilities;

public class AutoMapperProfiles : Profile
{
    protected AutoMapperProfiles()
    {
        CreateMap<DiscountDTO, Discount>();
    }
}