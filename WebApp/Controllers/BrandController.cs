using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/brand")]
[ApiController]
public class BrandController : ControllerBase
{
    private readonly IBrandService brandService;

    public BrandController(IBrandService brandService)
    {
        this.brandService = brandService;
    }

    [HttpGet]
    public ActionResult GetAllBrand()
    {
        List<BrandEntity> brand = brandService.GetAllBrand();
        return Ok(brand);
    }

    [HttpPost]
    public ActionResult CreateBrand([FromBody] Brand brand)
    {
        brandService.CreateBrand(brand);
        return Ok();
    }

    [HttpGet]
    [Route("{id}")]
    public ActionResult GetBrand(/* [FromQuery] */ int id)
    {
        BrandEntity brand = brandService.GetBrandEntityById(id);

        if (brand == null) {
            return NotFound($"There's no a Brand whit ID {id}");
        }

        return Ok(brand);
    }

    [HttpDelete]
    [Route("{id}")]
    public ActionResult DeleteBrand(/* [FromQuery] */ int id)
    {
        brandService.DeleteBrand(id);
        return Ok();
    }

    [HttpPut, Route("{id}")]
    public ActionResult UpdateBrand(Brand brand, int id)
    {
        brandService.UpdateBrand(brand, id);
        return Ok();
    }

    [HttpGet, Route("category")]
    public ActionResult GetAllCategories()
    {
        List<Category> brands = brandService.GetAllCategories();
        return Ok(brands);
    }
}