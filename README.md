_This is early alpha, so not all features are present and the code is messy and bugged_

# Godot Theme Generator
This addon simplifies UI theming in Godot. Input key colors, border specs, shadow specs, and margins, and that's it.

## Addon Structure

To generate a **Theme**, you need to create a **ThemeTemplate**. **ThemeTemplates** consist of **ComponentStyles**.

To simplify creation of **ComponentStyles**, there are **ColorPresets**, **ShapePresets**, **TexturePresets**, **FontPresets**, and **IconPresets**. They specify some common values that define the look of UI components.  

**ColorPresets** include four **ColorSets** – for text&icons, components, borders, and shadows. Each **ColorSet** has six colors named similar to button states: normal, hover, pressed, focus, and disabled.  
  
**ShapePresets** specify border properties, figure margins, and shadow parameters. **TexturePresets** contain textures to be used in **Styleboxes**. **IconPresets** specify all icons to be used in UI. **FontPresets** define the font and its size.  

Some of the **ComponentStyles** have **Styleboxes**. Simply put, **Styleboxes** are rectangles drawn in a certain way – with or without a texture, with borders of certain thickness, corners rounded or not, etc.  
  
By default, to cover all UI components and all their states, **ThemeTemplates** needs six **StyleBoxes**. They are automatically generated and called like button states too: normal, hover, pressed, focus, and disabled.  
  
Any **ComponentStyle** can be modified if needed. For example, one might specify a custom **ColorPreset** or **ShapePreset** for buttons, trees, text edit components, etc.
<img width="1810" alt="GodotThemeGenerator Scheme Trunc" src="https://github.com/user-attachments/assets/2b1840f3-5019-455d-b805-6b9d54c2ffc1">
