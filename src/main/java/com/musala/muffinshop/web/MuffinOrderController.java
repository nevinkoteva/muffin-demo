package com.musala.muffinshop.web;
import com.musala.muffinshop.domain.MuffinOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/muffinorders")
@Controller
@RooWebScaffold(path = "muffinorders", formBackingObject = MuffinOrder.class)
public class MuffinOrderController {
}
