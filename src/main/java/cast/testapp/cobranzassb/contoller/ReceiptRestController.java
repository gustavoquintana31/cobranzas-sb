package cast.testapp.cobranzassb.contoller;

import cast.testapp.catastro.entities.DocumentType;
import cast.testapp.invoice.entities.Invoice;
import cast.testapp.receipt.controller.ReceiptController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/cobranzas/v1")
public class ReceiptRestController {

    @GetMapping("/getPendingInvoice")
    public List<Invoice> getPendingInvoice() {
        ReceiptController receiptController = new ReceiptController();
        return receiptController.listPendingInvoicesByClient(DocumentType.RUC, "1231231", new Date());

    }

}
