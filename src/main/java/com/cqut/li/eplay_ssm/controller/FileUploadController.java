package com.cqut.li.eplay_ssm.controller;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Li
 * @date 2019/4/15-9:35
 */
@Controller
public class FileUploadController {


    Logger logger = LoggerFactory.getLogger(getClass());

    @ResponseBody
    @RequestMapping(value = "/form", method = RequestMethod.POST)
    public List<String> handleFormUpload(@RequestParam("name") String name,
                                           @RequestParam("file") MultipartFile file) {
        List<String> result = new ArrayList<>();


//        result.add(handleFormUploadByStream(name, file));
        result.add(handleFormUploadByByte(name, file));
        return result;
    }

    /***
     * 流的方式处理
     * @param name 文件名称
     * @param file 文件
     * @return
     */
    private String handleFormUploadByStream(String name, MultipartFile file) {
        InputStream is = null;
        try {
            long begin = System.currentTimeMillis();
            //获取到文件输入流
            is = file.getInputStream();
            if(is != null){
                //利用commons-io包的工具，输出到文件;file.getOriginalFilename()获取文件名+文件类型
                FileUtils.copyInputStreamToFile(is, new File("d://stream" + file.getOriginalFilename()));
                long end = System.currentTimeMillis();

                return "stream====>uploadSuccess   time: " + (end-begin);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "uploadFailure";
    }


    /***
     * 利用字节方式写入文件
     * @param name
     * @param file
     * @return
     */
    private String handleFormUploadByByte(String name, MultipartFile file) {
        //可利用nio对接收到的bytes做持久化操作
        if (!file.isEmpty()) {
            try {
                long begin = System.currentTimeMillis();

                byte[] bytes = file.getBytes();
                FileUtils.writeByteArrayToFile(new File("d://byte" + file.getOriginalFilename()), bytes);
                long end = System.currentTimeMillis();

                return "byte====>uploadSuccess   time: " + (end-begin);
//                logger.info(new String(bytes));
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return "uploadFailure";
    }
}
