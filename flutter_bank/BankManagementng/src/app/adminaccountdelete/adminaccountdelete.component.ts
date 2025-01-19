import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { AdminLoginService } from '../services/admin-login.service';
import { Admin } from '../models/admin';

@Component({
  selector: 'app-adminaccountdelete',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './adminaccountdelete.component.html',
  styleUrl: './adminaccountdelete.component.css'
})
export class AdminaccountdeleteComponent implements OnInit{
  id: any;
  password: any;
  name: any;
  gender: any;
  email: any;
  phone: any;
  address: any;

  data: any;
  constructor(private router: Router, private myservice: AdminLoginService) {
    this.data = this.router.getCurrentNavigation()?.extras.state?.["response"];

    this.id = this.data.id;
    this.password = this.data.password;
    this.name = this.data.name;
    this.gender = this.data.gender;
    this.email = this.data.email;
    this.phone = this.data.phone;
    this.address = this.data.address;
  }
  ngOnInit(): void {
  }

  delete() {
    this.data = new Admin(this.id, this.password, this.name, this.gender, this.email, this.phone, this.address);
    this.myservice.delete(this.data).subscribe(() => { });
    alert("Successfully deleted");
    this.router.navigateByUrl("adminAccount");
  }



}
