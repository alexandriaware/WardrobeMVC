using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace WardrobeMVC.Models
{
    public class ArmAccessoriesController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: ArmAccessories
        public ActionResult Index()
        {
            return View(db.ArmAccessories.ToList());
        }

        // GET: ArmAccessories/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ArmAccessory armAccessory = db.ArmAccessories.Find(id);
            if (armAccessory == null)
            {
                return HttpNotFound();
            }
            return View(armAccessory);
        }

        // GET: ArmAccessories/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ArmAccessories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ArmAccessoryID,Name,Photo,Color,Type,Season,Occasion")] ArmAccessory armAccessory)
        {
            if (ModelState.IsValid)
            {
                db.ArmAccessories.Add(armAccessory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(armAccessory);
        }

        // GET: ArmAccessories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ArmAccessory armAccessory = db.ArmAccessories.Find(id);
            if (armAccessory == null)
            {
                return HttpNotFound();
            }
            return View(armAccessory);
        }

        // POST: ArmAccessories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ArmAccessoryID,Name,Photo,Color,Type,Season,Occasion")] ArmAccessory armAccessory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(armAccessory).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(armAccessory);
        }

        // GET: ArmAccessories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ArmAccessory armAccessory = db.ArmAccessories.Find(id);
            if (armAccessory == null)
            {
                return HttpNotFound();
            }
            return View(armAccessory);
        }

        // POST: ArmAccessories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ArmAccessory armAccessory = db.ArmAccessories.Find(id);
            db.ArmAccessories.Remove(armAccessory);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
