using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/[controller]")]
[ApiController]
public class BrandController : ControllerBase
{
    private readonly IBrandService mediaService;

    public BrandController(IBrandService mediaService)
    {
        this.mediaService = mediaService;
    }

    [HttpGet]
    public ActionResult GetAllBrand()
    {
        List<BrandEntity> media = mediaService.GetAllBrand();
        return Ok(media);
    }

    [HttpPost]
    public ActionResult CreateBrand([FromBody] Brand media)
    {
        mediaService.CreateBrand(media);
        return Ok();
    }

    [HttpGet]
    [Route("{id}")]
    public ActionResult GetBrand(/* [FromQuery] */ int id)
    {
        BrandEntity media = mediaService.GetBrandEntityById(id);

        if (media == null) {
            return NotFound($"There's no a Brand whit ID {id}");
        }

        return Ok(media);
    }

    [HttpDelete]
    [Route("{id}")]
    public ActionResult DeleteBrand(/* [FromQuery] */ int id)
    {
        mediaService.DeleteBrand(id);
        return Ok();
    }

    [HttpPut, Route("{id}")]
    public ActionResult UpdateBrand(Brand media, int id)
    {
        mediaService.UpdateBrand(media, id);
        return Ok();
    }
}