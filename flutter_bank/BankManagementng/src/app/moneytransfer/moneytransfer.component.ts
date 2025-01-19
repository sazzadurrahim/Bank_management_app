import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AdminLoginService } from '../services/admin-login.service';
import { Router } from '@angular/router';
import { UsersidebarComponent } from "../usersidebar/usersidebar.component";
import { UserheaderComponent } from "../userheader/userheader.component";

@Component({
  selector: 'app-moneytransfer',
  standalone: true,
  imports: [FormsModule, UsersidebarComponent, UserheaderComponent],
  templateUrl: './moneytransfer.component.html',
  styleUrl: './moneytransfer.component.css'
})
export class MoneytransferComponent implements OnInit{
  constructor(private myservice: AdminLoginService, private router: Router) { }

  ngOnInit(): void {
  }
  toaccount: any;
  fromaccount: any;
  transfer: any;
  password: any;

  getData: any;

  transferamount() {
    this.myservice.moneytransfer(this.fromaccount, this.toaccount, this.transfer, this.password).subscribe((x) => {
      this.getData = x;

      if (this.getData.msg != null) {
        alert(this.getData.msg);
      } else {
        alert("Successfully Transfer");
        this.router.navigateByUrl("userpage");
      }

    });

  }

}
