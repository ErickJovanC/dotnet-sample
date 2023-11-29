using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Controllers;

[ApiController]
public class LocationController : ControllerBase
{
    private readonly ILocationService locationService;

    public LocationController(ILocationService locationService)
    {
        this.locationService = locationService;
    }

    [HttpGet, Route("api/States")]
    public ActionResult GetAllStates()
    {
        List<StateEntity> states = locationService.GetAllStates();
        return Ok(states);
    }

    [HttpGet, Route("api/Regions")]
    public ActionResult GetAllRegions()
    {
        List<RegionEntity> regions = locationService.GetAllRegions();
        return Ok(regions);
    }

    [HttpGet, Route("api/State/{id}")]
    public ActionResult GetState(int id)
    {
        StateEntity state = locationService.GetStateEntityById(id);

        if (state == null) {
            return NotFound($"There's no a State whit ID {id}");
        }

        return Ok(state);
    }

    [HttpGet, Route("api/Region/{id}")]
    public ActionResult GetRegion(int id)
    {
        RegionEntity region = locationService.GetRegionEntityById(id);

        if (region == null) {
            return NotFound($"There's no a Region whit ID {id}");
        }

        return Ok(region);
    }
}