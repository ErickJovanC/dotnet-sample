using Microsoft.AspNetCore.Mvc;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Controllers;

[Route("api/[controller]")]
[ApiController]
public class MediaController : ControllerBase
{
    private readonly IMediaService mediaService;

    public MediaController(IMediaService mediaService)
    {
        this.mediaService = mediaService;
    }

    [HttpGet]
    public ActionResult GetAllMedia()
    {
        List<MediaEntity> media = mediaService.GetAllMedia();
        return Ok(media);
    }

    [HttpPost]
    public ActionResult CreateMedia([FromBody] Media media)
    {
        mediaService.CreateMedia(media);
        return Ok();
    }

    [HttpGet]
    [Route("{id}")]
    public ActionResult GetMedia(/* [FromQuery] */ int id)
    {
        MediaEntity media = mediaService.GetMediaEntityById(id);

        if (media == null) {
            return NotFound($"There's no a Media whit ID {id}");
        }

        return Ok(media);
    }

    [HttpDelete]
    [Route("{id}")]
    public ActionResult DeleteMedia(/* [FromQuery] */ int id)
    {
        mediaService.DeleteMedia(id);
        return Ok();
    }

    [HttpPut, Route("{id}")]
    public ActionResult UpdateMedia(Media media, int id)
    {
        mediaService.UpdateMedia(media, id);
        return Ok();
    }
}