import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShowbankstatementComponent } from './showbankstatement.component';

describe('ShowbankstatementComponent', () => {
  let component: ShowbankstatementComponent;
  let fixture: ComponentFixture<ShowbankstatementComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ShowbankstatementComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ShowbankstatementComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
