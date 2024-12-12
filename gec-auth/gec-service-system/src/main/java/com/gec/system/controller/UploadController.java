package com.gec.system.controller;

import com.gec.system.util.OssTemplate;
import com.gec.system.util.VodTemplate;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Api(tags = "上传控制器")
@RestController
@RequestMapping("/admin/system/upload")
@CrossOrigin //  处理 跨域问题
public class UploadController {

    @Autowired
    private OssTemplate ossTemplate;

    @Autowired
    private VodTemplate vodTemplate;

    // 上传文件 (图片)
//    @PreAuthorize("hasAuthority('bnt.sysMovie.upload')")
    @RequestMapping(value = "/uploadImage")
    public String uploadImage(MultipartFile uploadImage) throws IOException {

        String imageUrl = this.ossTemplate.upload(uploadImage.getOriginalFilename(), uploadImage.getInputStream());
        System.out.println("imageUrl====="+imageUrl);
        return imageUrl;
    }

    // 上传视频操作
//    @PreAuthorize("hasAuthority('bnt.sysMovie.upload')")
    @RequestMapping(value = "/uploadVideo")
    public String uploadVideo(MultipartFile uploadVideo) throws IOException {
        String videoId = this.vodTemplate.uploadVideo(uploadVideo.getOriginalFilename(), uploadVideo.getInputStream());

        System.out.println("videoId====="+videoId);

        return  videoId;
    }



}

