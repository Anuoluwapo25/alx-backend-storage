-- Trigger to update the quantity in items after a new order is inserted
-- return a decreade item

DELIMITER //

CREATE TRIGGER decrease_quantity AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END;
//

DELIMITER ;
