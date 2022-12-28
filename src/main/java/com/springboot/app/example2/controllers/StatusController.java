package com.springboot.app.example2.controllers;


import lombok.extern.slf4j.Slf4j;
import lombok.AllArgsConstructor;
import com.springboot.base.controllers.BaseController;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import com.springboot.app.example2.models.services.StatusService;

/**
 * @developer Shahidul Hasan
 * class StatusController
 * RestController
 */
@Slf4j
@RestController
@AllArgsConstructor
@RequestMapping(value = "${api.version}")
public class StatusController extends BaseController {

    @Autowired
    protected StatusService trxnStatusService;

}